.class Lorg/chromium/sync/AndroidSyncSettings$1;
.super Ljava/lang/Object;
.source "AndroidSyncSettings.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/AndroidSyncSettings;


# direct methods
.method constructor <init>(Lorg/chromium/sync/AndroidSyncSettings;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/chromium/sync/AndroidSyncSettings$1;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/AndroidSyncSettings$1;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public onResult([Landroid/accounts/Account;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 238
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 239
    iget-object v5, p0, Lorg/chromium/sync/AndroidSyncSettings$1;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # getter for: Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v5}, Lorg/chromium/sync/AndroidSyncSettings;->access$100(Lorg/chromium/sync/AndroidSyncSettings;)Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/chromium/sync/AndroidSyncSettings$1;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # getter for: Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;
    invoke-static {v5}, Lorg/chromium/sync/AndroidSyncSettings;->access$300(Lorg/chromium/sync/AndroidSyncSettings;)Lorg/chromium/sync/SyncContentResolverDelegate;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/sync/AndroidSyncSettings$1;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # getter for: Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;
    invoke-static {v6}, Lorg/chromium/sync/AndroidSyncSettings;->access$200(Lorg/chromium/sync/AndroidSyncSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/chromium/sync/SyncContentResolverDelegate;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 241
    iget-object v5, p0, Lorg/chromium/sync/AndroidSyncSettings$1;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # getter for: Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;
    invoke-static {v5}, Lorg/chromium/sync/AndroidSyncSettings;->access$300(Lorg/chromium/sync/AndroidSyncSettings;)Lorg/chromium/sync/SyncContentResolverDelegate;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/sync/AndroidSyncSettings$1;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # getter for: Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;
    invoke-static {v6}, Lorg/chromium/sync/AndroidSyncSettings;->access$200(Lorg/chromium/sync/AndroidSyncSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6, v1}, Lorg/chromium/sync/SyncContentResolverDelegate;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 245
    return-void
.end method
