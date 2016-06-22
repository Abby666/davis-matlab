% ------------------------------------------------------------------------ 
% Jordi Pont-Tuset - http://jponttuset.github.io/
% April 2016
% ------------------------------------------------------------------------ 
% This file is part of the DAVIS package presented in:
%   Federico Perazzi, Jordi Pont-Tuset, Brian McWilliams,
%   Luc Van Gool, Markus Gross, Alexander Sorkine-Hornung
%   A Benchmark Dataset and Evaluation Methodology for Video Object Segmentation
%   CVPR 2016
% Please consider citing the paper if you use this code.
% ------------------------------------------------------------------------
function annot = db_read_annot(seq_id, frame_id)
    annot = imread(fullfile(db_annot_dir, seq_id, [frame_id '.png']));
    assert(size(annot,3)==1)
    assert(all(ismember(unique(annot),[0,255])))
    annot = (annot>0);
end