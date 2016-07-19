.class Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "IncognitoToggleButtonTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$2;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$2;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # invokes: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonResource()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$100(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    .line 72
    return-void
.end method
