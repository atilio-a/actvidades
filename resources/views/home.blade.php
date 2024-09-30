@extends('layouts.admin')

@section('content-header', 'Dashboard')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <!-- Log on to marco farfan 3888-15568587 for Mas projects -->
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3>Home</h3>
                        <p>Pedidos ult. 30 dias </p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-dolly-flatbed"></i>
                    </div>
                    <a href="{{ route('orders.index') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        
                    </div>
                    <div class="icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <a href="{{ route('usuarios.index') }}" class="small-box-footer">Mas info <i
                            class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            
            <!-- ./col -->


        </div>

        <div class="row"><!-- Log on to marco farfan 3888-15568587 for Mas projects -->
           
            <!-- ./col -->
           

            
            <!-- ./col -->
        </div>
    </div><!-- Log on to marco farfan 3888-15568587 for Mas projects -->
@endsection
