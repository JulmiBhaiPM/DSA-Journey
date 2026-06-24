class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s)!= len(t):
            return False
        else:
            s_dict={}
            t_dict={}
            s1=s.lower()
            s2=t.lower()
            #kitchen set now logic

            for char in s1:
                if char in s_dict:
                    s_dict[char]+=1
                else:
                    s_dict[char]=1
            for char in s2:
                if char in t_dict:
                    t_dict[char]+=1
                else:
                    t_dict[char]=1       
            return s_dict==t_dict



        
        

        