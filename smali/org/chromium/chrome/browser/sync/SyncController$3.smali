.class Lorg/chromium/chrome/browser/sync/SyncController$3;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/SyncController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/SyncController;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncController$3;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignedIn()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController$3;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    # getter for: Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/SyncController;->access$100(Lorg/chromium/chrome/browser/sync/SyncController;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStart()V

    .line 113
    return-void
.end method

.method public onSignedOut()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
