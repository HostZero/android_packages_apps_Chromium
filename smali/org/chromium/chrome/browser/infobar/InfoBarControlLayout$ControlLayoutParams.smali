.class final Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "InfoBarControlLayout.java"


# instance fields
.field public columnsRequired:I

.field private mMustBeFullWidth:Z

.field public start:I

.field public top:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$1;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->mMustBeFullWidth:Z

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;Z)Z
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$ControlLayoutParams;->mMustBeFullWidth:Z

    return p1
.end method
