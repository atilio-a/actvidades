<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Localidad;
use App\Models\Departamento;

class LocalidadController extends Controller
{
    public function index()
    {
        $localidades = Localidad::all();
        return view('localidades.index', compact('localidades'));
    
    }
      // Mostrar el formulario para crear una nueva localidad
    public function create()
    {
        return view('localidades.create');
    }

      // Almacenar una nueva localidad
    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:255',
            'departamento_id' => 'required|exists:departamentos,id'
        ]);

        Localidad::create($request->all());
        return redirect()->route('localidades.index')->with('success', 'Localidad creada correctamente.');
    }
    public function show(Localidad $localidad)
    {
        return view('localidades.show', compact('localidad'));
    }

    // Mostrar el formulario para editar una localidad
    public function edit(Localidad $localidad)
    {
        $departamentos = Departamento::all();

        return view('localidades.edit', compact('localidad', 'departamentos'));
    }

    // Actualizar una localidad existente
    public function update(Request $request, Localidad $localidad)
    {
        $request->validate([
            'nombre' => 'required|string|max:255',
            'departamento_id' => 'required|exists:departamentos,id',
        ]);

        $localidad->update($request->all());
        return redirect()->route('localidades.index')->with('success', 'Localidad actualizada correctamente.');
    }

    // Eliminar una localidad
    public function destroy(Localidad $localidad)
    {
        $localidad->delete();
        return redirect()->route('localidades.index')->with('success', 'Localidad eliminada correctamente.');
    }
}
