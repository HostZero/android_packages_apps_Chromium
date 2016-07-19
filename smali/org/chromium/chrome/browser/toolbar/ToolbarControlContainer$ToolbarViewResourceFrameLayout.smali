.class public Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;
.super Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;
.source "ToolbarControlContainer.java"


# instance fields
.field private mReadyForBitmapCapture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/ViewResourceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;Z)Z
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->mReadyForBitmapCapture:Z

    return p1
.end method


# virtual methods
.method protected createResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
    .locals 2

    .prologue
    .line 121
    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;

    sget v0, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/Toolbar;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/toolbar/Toolbar;)V

    return-object v1
.end method

.method protected isReadyForCapture()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->mReadyForBitmapCapture:Z

    return v0
.end method
