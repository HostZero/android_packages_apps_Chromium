.class public Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;
.super Ljava/lang/Object;
.source "AppMenuButtonHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mIsTouchEventsBeingProcessed:Z

.field private final mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

.field private mOnAppMenuShownListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    .line 31
    return-void
.end method

.method private showAppMenu(Landroid/view/View;Z)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->isAppMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->showAppMenu(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    if-nez p2, :cond_0

    const-string/jumbo v0, "MobileUsingMenuBySwButtonTap"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mOnAppMenuShownListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mOnAppMenuShownListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAppMenuActive()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mIsTouchEventsBeingProcessed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->isAppMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnterKeyPress(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->showAppMenu(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 103
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->getAppMenuDragHelper()Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, p2, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuDragHelper;->handleDragging(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 107
    :cond_0
    return v0

    .line 86
    :pswitch_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mIsTouchEventsBeingProcessed:Z

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 89
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->showAppMenu(Landroid/view/View;Z)Z

    goto :goto_0

    .line 93
    :pswitch_2
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mIsTouchEventsBeingProcessed:Z

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnAppMenuShownListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->mOnAppMenuShownListener:Ljava/lang/Runnable;

    .line 38
    return-void
.end method
