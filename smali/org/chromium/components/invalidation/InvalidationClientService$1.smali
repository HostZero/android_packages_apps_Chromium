.class Lorg/chromium/components/invalidation/InvalidationClientService$1;
.super Ljava/lang/Object;
.source "InvalidationClientService.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/components/invalidation/InvalidationClientService;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lorg/chromium/components/invalidation/InvalidationClientService;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lorg/chromium/components/invalidation/InvalidationClientService$1;->this$0:Lorg/chromium/components/invalidation/InvalidationClientService;

    iput-object p2, p0, Lorg/chromium/components/invalidation/InvalidationClientService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tokenAvailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/components/invalidation/InvalidationClientService$1;->this$0:Lorg/chromium/components/invalidation/InvalidationClientService;

    invoke-virtual {v0}, Lorg/chromium/components/invalidation/InvalidationClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/invalidation/InvalidationClientService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    # invokes: Lorg/chromium/components/invalidation/InvalidationClientService;->getOAuth2ScopeWithType()Ljava/lang/String;
    invoke-static {}, Lorg/chromium/components/invalidation/InvalidationClientService;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener;->setAuthToken(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public tokenUnavailable(Z)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method
