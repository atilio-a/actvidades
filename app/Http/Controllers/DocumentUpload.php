<?php

namespace App\Http\Controllers;

use App\Models\Document;
use App\Models\Image;
use Illuminate\Http\Request;

class DocumentUpload extends Controller
{
    //
    
    
     public function createForm(){
    return view('document-upload');
  }

  public function DocumentUpload(Request $req){
        $req->validate([
        'documentFile' => 'required',
         'documentFile.*' => 'file|mimes:pdf,doc,docx|max:4048'
        ]);

        
        
        if($req->hasFile('documentFile')){
            foreach ($req->file('documentFile') as $document) {
                 $fileName = $document->getClientOriginalName();
                 //$filePath= public_path().'/Document/' .$fileName;
                 $document->move('uploads/'. $req->action_id, $fileName, 'public');
                  $fileModel = new Document() ;
     

            $fileModel->action_id = $req->action_id;
            $fileModel->name = $fileName;
            $fileModel->path = '/uploads/'. $req->action_id.'/'. $fileName;
            $fileModel->save();
            }
            
            
        }
               
       ////Session::flash('message', 'Las Imagenes han sido registradas con exito!');

            return back()
            ->with('success','!!! Los Documentos han sido registrados con exito :) !!!!!!!!.')
            ->with('file', $fileName);
        
   }
}
