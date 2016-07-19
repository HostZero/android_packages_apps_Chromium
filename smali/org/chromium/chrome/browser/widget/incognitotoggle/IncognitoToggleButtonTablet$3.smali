.class Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$3;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "IncognitoToggleButtonTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$3;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$3;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # invokes: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonVisibility()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$200(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    .line 80
    return-void
.end method

.method public willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$3;->this$0:Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    # invokes: Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonVisibility()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->access$200(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    .line 85
    return-void
.end method
