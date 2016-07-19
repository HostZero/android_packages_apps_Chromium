.class public Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;
.super Ljava/lang/Object;
.source "ContextMenuHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCurrentContextMenuParams:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

.field private mNativeContextMenuHelper:J

.field private mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    .line 38
    return-void
.end method

.method private static create(J)Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;-><init>(J)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    .line 48
    return-void
.end method

.method private native nativeOnStartDownload(JZLjava/lang/String;)V
.end method

.method private native nativeSearchForImage(J)V
.end method

.method private native nativeShareImage(J)V
.end method

.method private onShareImageReceived(Lorg/chromium/ui/base/WindowAndroid;[B)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 120
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/share/ShareHelper;->shareImage(Landroid/app/Activity;[B)V

    goto :goto_0
.end method

.method private setPopulator(Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    .line 57
    return-void
.end method

.method private shouldShowMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->shouldShowContextMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showContextMenu(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 68
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->shouldShowMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mCurrentContextMenuParams:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    .line 77
    invoke-virtual {v2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 78
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->showContextMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "ContextMenu.Shown"

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v3, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 83
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->onContextMenuOpened()V

    :cond_3
    move v0, v1

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public getPopulator()Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mCurrentContextMenuParams:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->shouldShowMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    return-void

    .line 129
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mCurrentContextMenuParams:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V

    .line 132
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mCurrentContextMenuParams:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->onItemSelected(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z

    move-result v0

    return v0
.end method

.method public searchForImage()V
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->nativeSearchForImage(J)V

    goto :goto_0
.end method

.method public shareImage()V
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->nativeShareImage(J)V

    goto :goto_0
.end method

.method public startContextMenuDownload(ZZ)V
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 95
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->mNativeContextMenuHelper:J

    if-eqz p2, :cond_1

    const-string/jumbo v0, "Chrome-Proxy: pass-through\r\n"

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->nativeOnStartDownload(JZLjava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
