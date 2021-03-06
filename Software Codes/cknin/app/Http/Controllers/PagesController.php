<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\models\Patient;

class PagesController extends Controller
{
    public function index(){
        $title = 'Welcome to Chikitsa Nin';
       // return view('pages.index', compact('title'));
        return view('pages.index')->with('title',$title);

    }

    public function about(){
        $title = 'About Us';
        return view('pages.about')->with('title',$title);
    }
    public function contact(){
        $title = 'Contact Us';
        return view('pages.contact')->with('title',$title);
    }

    public function portal(){
        $title = 'Chikitsa Nin Portal';
        return view('pages.portal')->with('title',$title);
    }

    public function services(){
        /*$data = array(
             'title'=> 'Services',
             'services' => ['Request Medical Assistant','Sample Collection','Medicine Delivery']
        );
        return view('pages.services') ->with($data);
    }*/
        $title = ' Patient Services';
        return view('pages.services')->with('title',$title);
    } 
    public function completeProfile(){
        $title='Complete Your Profile';
        return view('pages.complete-profile')->with('title',$title);
     }

     public function doctorportal(Request $request){
        $title='Doctor Portal';
        return view('pages.doctorportal')->with('title',$title);
     }
     public function patientDetails(Request $request)
     {
         $patient_models = Patient::find($request->patient_id);
         //dd($patient_models->toArray());
         $patient_details   =   DB::table('patients')->join('users','users.id','patients.user_id')
            ->where('user_id',$request->patient_id)
            ->select('users.email','patients.*')->get();
         if($patient_models){
             return view('pages.doctorview')->with('patient_details',$patient_details);
         }
         return back()->with('error', 'The entered ID is invalid ! please enter a valid ID and try again.');
     }

     public function adminportal(){
        $title='Admin Portal';
        return view('pages.adminportal')->with('title',$title);
     } 
    public function requestmedical(){
       $title='Request Medical Assistant';
       $latitude = 23.815104;
       $longitude = 90.425537;
       $mapShops = '';
       return view('pages.requestmedical')->with([
           'title' => $title,
           'latitude' => $latitude,
           'longitude' => $longitude,
           'mapShops' => $mapShops,
        ]);
    }

   public function samplecollection(){
    $title='Request for Sample Collection';
    return view('pages.samplecollection')->with('title',$title);
    }

    public function medicinedelivery(){
    $title='Medicine Delivery';
    return view('pages.medicinedelivery')->with('title',$title);
    }

    public function doctorview(){
       
    $title='Check Patient Status';
    return view('pages.doctorview')->with('title',$title);
    }

  /*public function viewinfo(){
        $title='Patient Profile';
        $validatedData=$request->validate(
            ['Ptname' => 'required', 'Ptage' => 'required', 'Ptgender' => 'required',
            'Ptreligion' => 'required','Ptrelation' => 'required', 'Ptnumber' => 'required',
            'Ptaddress' => 'required' ]  
            );
        $Ptname = $request->input('Ptname');
        $Ptage = $request->input('Ptage');
        $Ptgender = $request->input('Ptgender');
        $Ptreligion = $request->input('Ptreligion');
        $Ptrelation = $request->input('Ptrelation');
        $Ptnumber = $request->input('Ptnumber');
        $Ptaddress = $request->input('Ptaddress');

        $TableUsers=cknin:: table('patient_info')->where('Ptname', $Ptname)->value('Ptname');
        if($cknin!=$TableUsers){        
                
            $data= array('Ptname'=>$Ptname, 'Ptage'=>$Ptage,'Ptgender'=>$Ptgender,'Ptreligion'=>$Ptreligion,
            'Ptrelation'=>$Ptrelation,'Ptnumber'=>$Ptnumber,'Ptaddress'=>$Ptaddress);//ATTRIBUTE NAME
            DB::table('patient_info')->insert($data); //TABLE NAME
            return View('pages.viewinfo');        }
         else {
            return View('wronginfo');  
        }

       return view('pages.viewinfo')->with('title',$title);
   }*/

}
