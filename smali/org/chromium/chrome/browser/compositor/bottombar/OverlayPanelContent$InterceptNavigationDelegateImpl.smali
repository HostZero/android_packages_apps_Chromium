.class Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "OverlayPanelContent.java"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# instance fields
.field final mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)V
    .locals 2

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;
    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$000(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->mContentDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent$InterceptNavigationDelegateImpl;->mExternalNavHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-virtual {v1, v2, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;->shouldInterceptNavigation(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/components/navigation_interception/NavigationParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
