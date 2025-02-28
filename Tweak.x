#import <UIKit/UIKit.h>

@interface PRXTextView : UITextView
-(void)setTitleText:(id)titleView;
@end

%hook PRXCardContentView
-(void)setTitleView:(PRXTextView *)titleView {
	%orig;
	if (titleView) {
		// Easy way to achieve the bolder text (added somewhere between 15.1 - 15.7)
		[titleView setTitleText:titleView.text];
	}
}
%end

%hook PRXFlowConfiguration
-(void)setSupportsDarkMode:(BOOL)arg1 {
	%orig(YES);
}
%end
