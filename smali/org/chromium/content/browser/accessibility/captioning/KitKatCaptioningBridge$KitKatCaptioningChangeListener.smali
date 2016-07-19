.class Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "KitKatCaptioningBridge.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;->this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;-><init>(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;->this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    # getter for: Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->access$100(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onEnabledChanged(Z)V

    .line 36
    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;->this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    # getter for: Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->access$100(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onFontScaleChanged(F)V

    .line 41
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;->this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    # getter for: Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->access$100(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 46
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;->this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    # invokes: Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    invoke-static {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->access$200(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;->this$0:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    # getter for: Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
    invoke-static {v1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->access$100(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onUserStyleChanged(Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;)V

    .line 52
    return-void
.end method
