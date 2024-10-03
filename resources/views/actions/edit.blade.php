@extends('layouts.admin')

@section('title', 'Editar action')
@section('content-header', 'Modificar action')

@section('content')

<div class="card">
    <div class="card-body">

        <form action="{{ route('actions.update', $action) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="form-group">
                <label for="name">Nombre</label>
                <input type="text" name="nombre" class="form-control @error('nombre') is-invalid @enderror" id="nombre"
                    placeholder="nombre" value="{{ old('name', $action->nombre) }}">
                @error('nombre')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>

            <div class="form-group">
                <label for="localidad_id">localidad</label>
                <select name="localidad_id" class="form-control" required>
                    <!-- Aquí debes cargar los localidads desde tu base de datos -->
                    @foreach ($localidades as $localidad)
                        <option value="{{ $localidad->id }}" {{ $action->localidad_id == $localidad->id ? 'selected' : '' }}>
                            {{ $localidad->nombre }}
                        </option>
                    @endforeach
                    
                </select>
            </div>


          

            <button class="btn btn-success btn-block btn-lg" type="submit">Actualizar Cambios</button>
        </form>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('plugins/bs-custom-file-input/bs-custom-file-input.min.js') }}"></script>
<script>
    $(document).ready(function () {
        bsCustomFileInput.init();
    });
</script>
@endsection