.class Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;
.super Ljava/lang/Object;
.source "ViewConfigurationHelper.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/gfx/ViewConfigurationHelper;


# direct methods
.method constructor <init>(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;->this$0:Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;->this$0:Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    # invokes: Lorg/chromium/ui/gfx/ViewConfigurationHelper;->updateNativeViewConfigurationIfNecessary()V
    invoke-static {v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->access$000(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V

    .line 48
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
