.class Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;
.super Ljava/lang/Object;
.source "AbstractAppRestrictionsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;->this$1:Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;

    iput-object p2, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;->this$1:Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;

    iget-object v0, v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    iget-object v1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;->val$bundle:Landroid/os/Bundle;

    # invokes: Lorg/chromium/policy/AbstractAppRestrictionsProvider;->cachePolicies(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->access$100(Lorg/chromium/policy/AbstractAppRestrictionsProvider;Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;->this$1:Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;

    iget-object v0, v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;->this$0:Lorg/chromium/policy/AbstractAppRestrictionsProvider;

    iget-object v1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->notifySettingsAvailable(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
