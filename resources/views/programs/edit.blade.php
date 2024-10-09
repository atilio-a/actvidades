@extends('layouts.admin')

@section('title', ' Programa')
@section('content-header', ' Programa')
@section('content-actions')
    <a href="{{ route('programs.index') }}" class="btn btn-success"><i class="fas fa-eye"> Cancelar</i></a>
@endsection
@section('content')

    <div class="card">
        <div class="card-body">
            
            <form action="{{ route('programs.update', $program) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
    

                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" class="form-control @error('nombre') is-invalid @enderror"
                        id="nombre" placeholder="nombre" value="{{ old('nombre', $program->nombre) }}">
                    @error('nombre')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="descripcion">Descripcion</label>
                    <input type="text" name="descripcion" class="form-control @error('descripcion') is-invalid @enderror"
                        id="descripcion" placeholder="descripcion" value="{{ old('descripcion', $program->descripcion) }}">
                    @error('descripcion')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                
                <div class="form-group">
                    <label for="entity_id">Entidad</label>
                    <select name="entity_id" class="form-control" required>
                        <!-- Aquí debes cargar los departamentos desde tu base de datos -->
                        @foreach ($entities as $entity)
                            <option value="{{ $entity->id }}"{{ $program->entity_id == $entity->id ? 'selected' : '' }}>{{ $entity->nombre }}</option>
                        @endforeach
                    </select>
                </div>


             



                <button class="btn btn-success btn-block btn-lg" type="submit">Modificar el Programa</button>
            </form>
        </div>
    </div>
@endsection

@section('js')
    <script src="{{ asset('plugins/bs-custom-file-input/bs-custom-file-input.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            bsCustomFileInput.init();
        });
    </script>
@endsection
