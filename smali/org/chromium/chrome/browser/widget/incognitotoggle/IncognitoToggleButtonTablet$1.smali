.class Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;
.super Ljava/lang/Object;
.source "IncognitoToggleButtonTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # getter for: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$000(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # getter for: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$000(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # getter for: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$000(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 53
    :cond_0
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
