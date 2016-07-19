.class final Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;
.super Ljava/lang/Object;
.source "ChildAccountInfoFetcher.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$nativeAccountFetcherService:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->val$nativeAccountFetcherService:J

    iput-object p3, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->val$nativeAccountFetcherService:J

    iget-object v2, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->val$accountId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    # invokes: Lorg/chromium/components/signin/ChildAccountInfoFetcher;->nativeSetIsChildAccount(JLjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->access$000(JLjava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public final bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
