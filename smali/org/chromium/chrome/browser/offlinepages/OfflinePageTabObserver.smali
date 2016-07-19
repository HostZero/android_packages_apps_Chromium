.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "OfflinePageTabObserver.java"


# static fields
.field private static final sTabObservers:Ljava/util/Map;


# instance fields
.field private mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mBookmarkId:J

.field private mConnected:Z

.field private mListener:Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;

.field private mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

.field private mWasHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->sTabObservers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 115
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getBookmarkId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mBookmarkId:J

    .line 116
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mConnected:Z

    .line 119
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mWasHidden:Z

    .line 121
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;

    invoke-direct {v0, p1, p2, p4}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mListener:Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;

    .line 122
    iput-object p4, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    .line 123
    return-void
.end method

.method public static addObserverForTab(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 44
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->sTabObservers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;

    .line 46
    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 49
    sget-object v2, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->sTabObservers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-direct {v0, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->setConnected(Z)V

    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-direct {v0, p3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->enableConnectivityListener(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    goto :goto_0
.end method

.method private enableConnectivityListener(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mListener:Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->enable(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 131
    return-void
.end method

.method private static removeObserverForTab(I)V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->sTabObservers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;

    .line 84
    sget-object v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->sTabObservers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 89
    :cond_0
    return-void
.end method

.method private setConnected(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mConnected:Z

    .line 127
    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mListener:Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->disable()V

    .line 166
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 167
    sget-object v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->sTabObservers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mWasHidden:Z

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 155
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->preferOnlineVersion(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 137
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getBookmarkId()J

    move-result-wide v0

    .line 138
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mWasHidden:Z

    if-eqz v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mConnected:Z

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->showReloadSnackbar(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 145
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mWasHidden:Z

    goto :goto_0
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mListener:Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->disable()V

    .line 176
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->removeObserverForTab(I)V

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageTabObserver;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 179
    return-void
.end method
