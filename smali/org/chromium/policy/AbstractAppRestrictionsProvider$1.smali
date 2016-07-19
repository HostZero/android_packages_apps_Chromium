.class Lorg/chromium/policy/AbstractAppRestrictionsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractAppRestrictionsProvider.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;


# direct methods
.method constructor <init>(Lorg/chromium/policy/AbstractAppRestrictionsProvider;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$1;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$1;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    invoke-virtual {v0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->refresh()V

    .line 47
    return-void
.end method
