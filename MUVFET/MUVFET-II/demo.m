% Replay the videos with human fixation heat maps
close all; clear all;
tic
VIDEO_DIR = './raw_videos/';

Video_name = '100.avi'; % Select the target movie there
load('video_database.mat')

 
 Video_name_short = Video_name(1:length(Video_name)-4);   
 for k = 1:length(video_database.video_names_list)
	if (strcmp(video_database.video_names_list{k},Video_name_short))     
	index_video = k;
	break;
	end
 end
 
 obj = VideoReader([VIDEO_DIR Video_name]);
 numFrames = obj.NumberOfFrames;
 FrameRate = video_database.videos_info.framerate_fps(index_video);
 ThisVideo_fixadata = video_database.fixdata(find(video_database.fixdata(:,2)==index_video),:);   
 video_size = video_database.videos_info.size(index_video,:);
 
 FixationPerFrame = cell(1,numFrames);
 
 
 Frame_durationMs = (1000/FrameRate);
 for k = 1:size(ThisVideo_fixadata,1)
	fixposition = [ThisVideo_fixadata(k,5);ThisVideo_fixadata(k,6)];
	StartFrame = ceil(ThisVideo_fixadata(k,3)/Frame_durationMs);
	EndFrame = ceil((ThisVideo_fixadata(k,3)+ThisVideo_fixadata(k,4))/Frame_durationMs);
	if (StartFrame <= 0)
		StartFrame = 1;
	end
	if (EndFrame > numFrames)
		EndFrame = numFrames;
	end
	for i = StartFrame:EndFrame
		FixationPerFrame{i} = [FixationPerFrame{i} fixposition];
	end
 end
 
 % Draw heat maps
 color_map = colormap(jet(256));
 obj = VideoReader([VIDEO_DIR Video_name]);
 vidFrames = read(obj);   
 for k = 1:numFrames-5
    mov(k).cdata = vidFrames(:,:,:,k);
    mov(k).colormap = [];
	x=FixationPerFrame{k}(1,:);
	y=FixationPerFrame{k}(2,:);
	fixmaptemp = make_gauss_masks2(x,y,[video_size(2) video_size(1)]); 
	fixmaps(:,:,k) = fixmaptemp;
	[heatposrow,heatposcol] = find(fixmaptemp>0.5);
	for i = 1:length(heatposrow)
	map_index = round(fixmaptemp(heatposrow(i),heatposcol(i)) *255)+1;
	mov(k).cdata(heatposrow(i),heatposcol(i),:) = round(color_map(map_index,:)*255);
	end
    mov(k).colormap = [];
end
implay(mov,FrameRate);
toc