<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Post;
use App\Models\User;
use Filament\Tables;
use App\Models\Category;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Illuminate\Support\Str;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Facades\Storage;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use App\Filament\Resources\PostResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\PostResource\RelationManagers;

class PostResource extends Resource
{
    protected static ?string $model = Post::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        TextInput::make('title'),
                        TextInput::make('slug'),
                        RichEditor::make('body'),
                        FileUpload::make('thumbnail')->image()->disk('public'),
                        Select::make('category_id')
                            ->label('Category')
                            ->options(Category::all()->pluck('name', 'id')) // Mengambil data kategori dari tabel categories
                            ->searchable() // Fitur pencarian jika kategori banyak
                            ->placeholder('Pilih kategori')
                            ->required(), // Field ini wajib diisi
                        Select::make('author_id')
                            ->label('Author')
                            ->options(User::all()->pluck('name', 'id')) // Mengambil data user dari tabel users
                            ->searchable() // Fitur pencarian jika user banyak
                            ->placeholder('Pilih author'), // Placeholder untuk select
                    ])
                    ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('title')->sortable()->searchable(),
                TextColumn::make('slug')->sortable()->searchable(),
                // TextColumn::make('body'),
                // Menggunakan strip_tags untuk menghilangkan tag HTML di kolom 'body'
                TextColumn::make('body')
                    ->getStateUsing(function ($record) {
                        return Str::limit(strip_tags($record->body), 20); // Hanya menampilkan 100 karakter pertama
                    }),
                ImageColumn::make('thumbnail'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()->after(
                        function (Collection $records) {
                            foreach ($records as $key => $value) {
                                if ($value->thumbnail) {
                                    Storage::disk('public')->delete($value->thumbnail);
                                }
                            }
                        }
                    ),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPosts::route('/'),
            'create' => Pages\CreatePost::route('/create'),
            'edit' => Pages\EditPost::route('/{record}/edit'),
        ];
    }
}
