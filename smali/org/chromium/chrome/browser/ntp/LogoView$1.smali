.class Lorg/chromium/chrome/browser/ntp/LogoView$1;
.super Landroid/util/Property;
.source "LogoView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/LogoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/LogoView$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$1;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/chromium/chrome/browser/ntp/LogoView;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 76
    # getter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F
    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$000(Lorg/chromium/chrome/browser/ntp/LogoView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/LogoView$1;->get(Lorg/chromium/chrome/browser/ntp/LogoView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lorg/chromium/chrome/browser/ntp/LogoView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/LogoView$1;->set(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/Float;)V

    return-void
.end method

.method public set(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 81
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/LogoView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/LogoView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    # getter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F
    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$000(Lorg/chromium/chrome/browser/ntp/LogoView;)F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$002(Lorg/chromium/chrome/browser/ntp/LogoView;F)F

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$1;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->invalidate()V

    .line 87
    :cond_2
    return-void
.end method
