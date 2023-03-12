classdef Die < handle
% A fair die has a certain number of sides (default is 6).  At rest, one of
% its sides is the top face.
    
    properties (Access=public)
       sides = 6;
       top
    end
    
    methods
        function D = Die(s)
        % Constructor:  Create an s-sided Die
            if nargin==1    % check the number of input arguments
                D.sides= s;
            end
            D.roll();  % roll is another method in this class
        end
        
        function s = getSides(self)  % a getter function for # of sides
           s= self.sides; 
        end
        
        function t = getTop(self)   % a getter function for top face
           t= self.top; 
        end
        
        function roll(self)
          % Roll the Die once
            face= ceil(rand*self.getSides());  % note that we use getSides function
              
            self.setTop(face)        % set function is private but can be called inside the class
              
            % fprintf('Rolled %d using Die\n', face) % comment for diagnostic
        end
        
        function disp(self)
            if length(self)==1
               fprintf('Die showing top face %d\n', self.getTop())
            end
        end
        
   end %methods public
   
   methods (Access=protected)
       function setTop(self, f)   % a setter function
       % Set this Die's top to face f
        self.top= f;
       end
   end
       
end %classdef