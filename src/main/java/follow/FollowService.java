package follow;

import java.util.ArrayList;

public class FollowService {
    FollowDao followDao;
    public FollowService() {
        followDao = new FollowDao();
    }
    public void addFollow(Follow follow) {
        followDao.insert(follow);
    }
    public void deleteFollow(String id, int board_num) {
        followDao.delete(id, board_num);
    }
    public ArrayList<Follow> getMyFollowList(String id) {
        return followDao.selectByMember_Num(id);
    }
    public Boolean isFollow(String id, int board_num) {
        return followDao.isFollow(id, board_num);
    }
}
