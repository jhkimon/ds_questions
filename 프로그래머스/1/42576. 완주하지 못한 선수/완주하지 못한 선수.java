import java.util.HashMap;

class Solution {
    public String solution(String[] participant, String[] completion) {
        HashMap<String, Integer> participantMap = new HashMap<>();
        for (String p: participant){
            participantMap.put(p, participantMap.getOrDefault(p, 0) + 1);
        }
        
        for (String complete: completion){
            participantMap.put(complete, participantMap.getOrDefault(complete, 0) - 1);
        }
        
        for (String pMap: participantMap.keySet()) {
            if (participantMap.get(pMap) == 1){
                return pMap;
            }
        }
        return null;
    }
}