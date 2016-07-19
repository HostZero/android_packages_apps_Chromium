.class Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;
.super Landroid/database/ContentObserver;
.source "WebRestrictionsClient.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

.field final synthetic val$nativeProvider:J


# direct methods
.method constructor <init>(Lorg/chromium/components/webrestrictions/WebRestrictionsClient;Landroid/os/Handler;J)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;->this$0:Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

    iput-wide p3, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;->val$nativeProvider:J

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;->onChange(ZLandroid/net/Uri;)V

    .line 67
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;->this$0:Lorg/chromium/components/webrestrictions/WebRestrictionsClient;

    iget-wide v2, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$1;->val$nativeProvider:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/components/webrestrictions/WebRestrictionsClient;->nativeNotifyWebRestrictionsChanged(J)V

    .line 72
    return-void
.end method
