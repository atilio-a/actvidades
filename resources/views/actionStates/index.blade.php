@extends('layouts.admin')

@section('title', ' Estados')
@section('content-header', ' Estados')
@section('content-actions')
    <form method="GET" action="{{ route('actionStates.index') }}" class="form-inline">
        <input type="text" name="search" class="form-control w-75" placeholder="Buscar..." value="{{ request()->get('search') }}">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </form>
    <br>
    <a href="{{ route('actionStates.create') }}" class="btn btn-success"><i class="fas fa-plus"></i> Registar nuevo Estado</a>
@endsection
@section('css')
    <link rel="stylesheet" href="{{ asset('plugins/sweetalert2/sweetalert2.min.css') }}">
@endsection

@section('content')
    <div class="card">
        
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <form method="GET" action="{{ route('actionStates.index') }}" class="row">
                        <div class="col-md-6">
                            <input type="input" name="search" class="form-control" placeholder="Buscar..." value="{{ request()->get('search') }}">
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-primary" type="submit"><i class="fas fa-filter"></i> Buscar </button>
                        </div>
                    </form>
                </div>
            </div>
            <hr>
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <td>Nombre</td>
                        <td>Descripcion</td>
                        <td>Acciones</td>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($actionStates as $actionState)
                        <tr>
                            <td>{{ $actionState->nombre }}</td>
                            <td>{{ $actionState->descripcion}}</td>
                            <td>
                                <a href="{{ route('actionStates.show', $actionState) }}" class="btn btn-success"
                                    title="Ver Datos"><i class="fas fa-eye"></i></a>
                                <!--<a href="{{ route('actionStates.edit', $actionState) }}" class="btn btn-primary"><i
                                        class="fas fa-edit"></i></a>-->
                                <!--<button class="btn btn-danger btn-delete"
                                    data-url="{{ route('actionStates.destroy', $actionState) }}"><i
                                        class="fas fa-trash"></i></button>-->
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    @endsection

    @section('js')
        <script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
        <script>
            $(document).ready(function() {
                $(document).on('click', '.btn-delete', function() {
                    $this = $(this);
                    const swalWithBootstrapButtons = Swal.mixin({
                        customClass: {
                            confirmButton: 'btn btn-success',
                            cancelButton: 'btn btn-danger'
                        },
                        buttonsStyling: false
                    })

                    swalWithBootstrapButtons.fire({
                        title: 'Seguro?',
                        text: "Realmente quiere eliminar el estado?",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonText: 'Si, borrala!',
                        cancelButtonText: 'No',
                        reverseButtons: true
                    }).then((result) => {
                        if (result.value) {
                            $.post($this.data('url'), {
                                _method: 'DELETE',
                                _token: '{{ csrf_token() }}'
                            }, function(res) {
                                $this.closest('tr').fadeOut(500, function() {
                                    $(this).remove();
                                })
                            })
                        }
                    })
                })
            })
        </script>
    @endsection
