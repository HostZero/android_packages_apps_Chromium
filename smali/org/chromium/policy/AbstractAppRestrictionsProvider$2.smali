.class Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;
.super Ljava/lang/Object;
.source "AbstractAppRestrictionsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;


# direct methods
.method constructor <init>(Lorg/chromium/policy/AbstractAppRestrictionsProvider;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    iget-object v2, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    iget-object v3, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    # getter for: Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->access$000(Lorg/chromium/policy/AbstractAppRestrictionsProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    invoke-virtual {v3, v0, v1}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->recordStartTimeHistogram(J)V

    .line 109
    new-instance v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;

    invoke-direct {v0, p0, v2}, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;-><init>(Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;Landroid/os/Bundle;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method
