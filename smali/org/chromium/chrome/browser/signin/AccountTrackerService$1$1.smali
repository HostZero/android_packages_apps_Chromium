.class Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;
.super Landroid/os/AsyncTask;
.source "AccountTrackerService.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

.field final synthetic val$accounts:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;[Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->doInBackground([Ljava/lang/Void;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->val$accounts:[Landroid/accounts/Account;

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v1, v2

    .line 124
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->val$accounts:[Landroid/accounts/Account;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 125
    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v4, v4, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->val$accountIdProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    iget-object v5, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v5, v5, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$000(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->val$accounts:[Landroid/accounts/Account;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->getAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 127
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->val$accounts:[Landroid/accounts/Account;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->onPostExecute([[Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute([[Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSyncForceRefreshedForTest:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$100(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    # getter for: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsChanged:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$200(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->seedSystemAccounts()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$300(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    aget-object v1, p1, v2

    # invokes: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->areAccountIdsValid([Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$400(Lorg/chromium/chrome/browser/signin/AccountTrackerService;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    aget-object v0, p1, v2

    const/4 v1, 0x1

    aget-object v1, p1, v1

    # invokes: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->nativeSeedAccountsInfo([Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$500([Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    # setter for: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$602(Lorg/chromium/chrome/browser/signin/AccountTrackerService;Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;)Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->notifyObserversOnSeedingComplete()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$700(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v0, "AccountService"

    const-string/jumbo v1, "Invalid mapping of id/email"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->this$1:Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountTrackerService;->seedSystemAccounts()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->access$300(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)V

    goto :goto_0
.end method
