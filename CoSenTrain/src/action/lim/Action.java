package action.lim;

import javax.servlet.http.HttpServletRequest;

import control.lim.ActionForWard;

public interface Action {
 public ActionForWard execute(HttpServletRequest request);
}
