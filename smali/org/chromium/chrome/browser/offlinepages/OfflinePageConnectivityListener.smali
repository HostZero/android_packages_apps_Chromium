.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;
.super Ljava/lang/Object;
.source "OfflinePageConnectivityListener.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# instance fields
.field private mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mEnabled:Z

.field private mSeen:Z

.field private mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 34
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSeen:Z

    .line 35
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mEnabled:Z

    .line 36
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->enable(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 37
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mEnabled:Z

    .line 85
    return-void
.end method

.method public enable(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mEnabled:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSeen:Z

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    .line 74
    return-void
.end method

.method public onConnectionTypeChanged(I)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Got connectivity event, connectionType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", controller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Connection changed, connected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSeen:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSnackbarController:Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->showOfflineSnackbarIfNecessary(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 58
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->disable()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageConnectivityListener;->mSeen:Z

    .line 61
    :cond_0
    return-void
.end method
