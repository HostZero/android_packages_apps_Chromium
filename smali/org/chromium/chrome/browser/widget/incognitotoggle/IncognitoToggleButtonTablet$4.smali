.class Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$4;
.super Ljava/lang/Object;
.source "IncognitoToggleButtonTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$4;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # getter for: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$000(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setVisibility(I)V

    .line 114
    return-void

    .line 112
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
