<div class="container">
    <div class="row justify-content-center">
		<h3 class="display-4">Subjects</h3>
		<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>				
					<td>Subject Name</td>
					<td>Assignment Name</td>
					<td>Description</td>
					<td>Date Created</td>
					<td>Status</td>
					<td>Date Submitted</td>
				</tr>
			</thead>
			<tbody>
			<?php $__currentLoopData = $get_assignments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $i): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<tr>
				<td><?php echo e($i -> subject); ?></td>
				<td><?php echo e($i -> assignment_name); ?></td>
				<td><?php echo e($i -> assignment_desc); ?></td>
				<td><?php echo e($i -> date_created); ?></td>				
				<td><?php echo e($i -> status); ?></td>
				<td><?php echo e($i -> date_submit); ?></td>			
				</td>
			</tr>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</tbody>
		</table>
    </div>
</div>


<?php echo $__env->make('layouts.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH G:\gb-test\testcms\resources\views/listassignments.blade.php ENDPATH**/ ?>