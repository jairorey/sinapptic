<?php 
namespace App;
use Maatwebsite\Excel\Files\ExcelFile;
 
class ExcelImport extends ExcelFile {
    public function getFile()
    {
        return public_path() . '/asistencia.csv';
    }
    public function getFilters()
    {
        return [
            'chunk'
        ];
    }
}