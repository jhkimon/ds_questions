import java.util.PriorityQueue;

class Solution {
        public static Integer solution(int[] scoville, int K) {
        PriorityQueue<Integer> pq = new PriorityQueue<>((o1, o2) -> {
            if (o1 == o2){
                return 0;
            } else if (o1 > o2){
                return 1;
            } else {
                return -1;
            }
        });

        int answer = 0;
        for (int i = 0; i < scoville.length; i++){
            pq.add(scoville[i]);
        }

        while (pq.peek() < K){
            if (pq.size() < 2){
                return -1;
            }
            pq.add(pq.poll() + (pq.poll() * 2));
            answer ++;
        }
        return answer;
    }
}