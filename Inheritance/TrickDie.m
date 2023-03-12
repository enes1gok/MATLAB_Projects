classdef TrickDie < Die
% An unfair die with one face (favoredFace) a certain number of times
% (weight) more likely than another face to be on top.
    
    properties (Access=public)
        favoredFace  % The face more likely to be on top
        weight;      % favoredFace is WEIGHT times more likely to be on top
    end
    
    methods
        function TD = TrickDie(ff, w, s)
        % Constructor: Favored face ff is w times more likely than another
        % face of this TrickDie to be on top.
        
            if nargin<3
                s= 6;        % if s is not provided by the user
            end
            
            TD= TD@Die(s);  % call the constructor of the parent
            
            if nargin>=2
                TD.favoredFace= ff;
                TD.weight= w;
            end
            TD.roll()
        end
        
        function w = getWeight(self)  % a getter function
            w= self.weight;
        end
        
        function ff = getFavoredFace(self) % a getter function
            ff= self.favoredFace;
        end
        
        function roll(self)
            
            face= ceil(rand*(self.getSides()+self.getWeight()-1));
            
            if face > self.getSides()
                
               face= self.getFavoredFace();
            
            end
            self.setTop(face)
            % fprintf('Rolled %d using TrickDie\n', face) % comment for diagnostic
        end
        
        function disp(self)
            fprintf('It is a tricky Die\n')
            disp@Die(self)
        end
    end
    
end %classdef