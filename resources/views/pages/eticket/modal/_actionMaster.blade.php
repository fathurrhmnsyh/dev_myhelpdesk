<div style="text-align: center; ">
    <div class="btn-group">
      <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-search"></i> 
      </button>
      <div class="dropdown-menu">
       <a href="#" style="color: black;" data-toggle="tooltip"  row-id="{{ $model->id }}" data-placement="top" title="View" class="dropdown-item view"> <i class="fa fa-eye"></i> View</a>
       <a href="#" style="color:black ;" data-toggle="tooltip"  row-id="{{ $model->id }}" data-id="{{ $model->ticket_no }}" data-target="" data-period="" data-placement="top" title="Edit" class="dropdown-item edit"> <i class="fa fa-pencil-alt"></i> Edit</a>
       <a href="#" data-toggle="tooltip" style="color:black ;" row-id="{{ $model->id }}" data-id="{{ $model->ticket_no }}" data-target="" data-period="" data-placement="top" title="Post" class="dropdown-item posted"> <i class="fa fa-paper-plane"></i> Post</a>
       <a href="" target="_blank" style="color: black;" data-toggle="tooltip" row-id="" data-placement="top" title="Print" class="dropdown-item print"> <i class="fa fa-print"></i> Print</a>
       
       {{-- <a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-print"></i> 
        Print
      </a>
      
      <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        <a class="dropdown-item" href="#">Report Asset</a>
        <a class="dropdown-item" href="#">BPAT</a>
      </div> --}}
      
      <a href="#" data-toggle="tooltip" style="color: black;" row-id="{{ $model->id }}" data-id="{{ $model->ticket_no }}" data-placement="top" title="Log" class="dropdown-item log"> <i class="fa fa-share"></i> Log</a>
      <a href="#" style="color: black;" data-toggle="tooltip" row-id="{{ $model->id }}" data-id="{{ $model->ticket_no }}" data-target="" data-placement="top" title="Void" class="dropdown-item voided"> <i class="fa fa-trash"></i> Void</a>
      
      </div>
    </div>
  </div>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>