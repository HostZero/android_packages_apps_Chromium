.class Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$1;
.super Ljava/lang/Object;
.source "PassphraseActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncStateChanged()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->removeSyncStateChangedListener()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;)V

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->displayPassphraseDialog()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;->access$100(Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;)V

    .line 95
    :cond_0
    return-void
.end method
