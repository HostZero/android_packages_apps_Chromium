.class Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;
.super Ljava/lang/Object;
.source "SyncCustomizationFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 165
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->canDisableSync()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$000(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # getter for: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$100(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStart()V

    .line 173
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->stopSync()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$200(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V

    goto :goto_0
.end method
