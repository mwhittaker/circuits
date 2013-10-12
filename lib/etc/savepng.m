function savepng(fig, filename)
% Saves a figure in png format.
% @param fig A figure handle.
% @param filename The filename of the image.
    saveas(fig, strcat('../img/', filename), 'png')
end
