<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\Payment;
use App\Models\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $last30Days = date('Y-m-d H:i:s', strtotime('-30 days'));

        $orders = Order::with(['items', 'payments'])->get();  
        $customers_count = Customer::count();
        $products_count = Payment::count();
        $ultimos_30_pedidos = Order::where('created_at', '>=', $last30Days)->count();
        $pagado = Order::sum('pagado');
        $monto = Order::sum('monto');
        $cotizado = Order::where('created_at', '>=', $last30Days)->sum('monto');
        $cobrado = Order::where('created_at', '>=', $last30Days)->sum('pagado');
        $profesionales_aceptados = User::where('rol','=','COMUN')->count();


        return view('home', [
            'orders_count' => $orders->count(),
            'income' => $orders->map(function ($i) {
                if ($i->receivedAmount() > $i->total()) {
                    return $i->total();
                }

                return $i->receivedAmount();
            })->sum(),
            'income_today' => $orders->where('created_at', '>=', date('Y-m-d').' 00:00:00')->map(function ($i) {
                if ($i->receivedAmount() > $i->total()) {
                    return $i->total();
                }

                return $i->receivedAmount();
            })->sum(),
            'customers_count' => $customers_count,
            'products_count' => $products_count,
            'ultimos_30_pedidos'=> $ultimos_30_pedidos,
            'saldo'=> $monto - $pagado,
            'profesionales' => $profesionales_aceptados,
            'cotizado' => $cotizado,
            'cobrado' => $cobrado,
        ]);
    }
}
