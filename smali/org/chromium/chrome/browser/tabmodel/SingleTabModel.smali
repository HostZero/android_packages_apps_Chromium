.class public Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;
.super Ljava/lang/Object;
.source "SingleTabModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBlockNewWindows:Z

.field private mIsIncognito:Z

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mActivity:Landroid/app/Activity;

    .line 29
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mIsIncognito:Z

    .line 30
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mBlockNewWindows:Z

    .line 31
    return-void
.end method

.method private completeActivity()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mBlockNewWindows:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->finishAndRemoveTask(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static native nativePermanentlyBlockAllNewWindows(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public cancelTabClosure(I)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public closeAllTabs()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->closeAllTabs(ZZ)V

    .line 109
    return-void
.end method

.method public closeAllTabs(ZZ)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->completeActivity()V

    .line 114
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result v0

    return v0
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->completeActivity()V

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commitAllTabClosures()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public commitTabClosure(I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->destroy()V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 136
    return-void
.end method

.method public getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;
    .locals 0

    .prologue
    .line 150
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 119
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public index()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isClosurePending(I)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mIsIncognito:Z

    return v0
.end method

.method public moveTab(II)V
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    return-void
.end method

.method public setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_0
    return-void
.end method

.method setTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 39
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 40
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mIsIncognito:Z

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mBlockNewWindows:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->nativePermanentlyBlockAllNewWindows(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 44
    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-interface {v0, p1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 48
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 50
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->show(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 52
    :cond_4
    return-void
.end method

.method public supportsPendingClosures()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
