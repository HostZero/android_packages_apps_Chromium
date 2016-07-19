.class public Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
.super Ljava/lang/Object;
.source "AccessibilitySnapshotNode.java"


# instance fields
.field public bgcolor:I

.field public bold:Z

.field public children:Ljava/util/ArrayList;

.field public className:Ljava/lang/String;

.field public color:I

.field public endSelection:I

.field public hasSelection:Z

.field public hasStyle:Z

.field public height:I

.field public italic:Z

.field public lineThrough:Z

.field public scrollX:I

.field public scrollY:I

.field public startSelection:I

.field public text:Ljava/lang/String;

.field public textSize:F

.field public underline:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->x:I

    .line 40
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->y:I

    .line 41
    iput p3, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->scrollX:I

    .line 42
    iput p4, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->scrollY:I

    .line 43
    iput p5, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->width:I

    .line 44
    iput p6, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->height:I

    .line 45
    iput-object p7, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->className:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public addChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasSelection:Z

    .line 63
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->startSelection:I

    .line 64
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->endSelection:I

    .line 65
    return-void
.end method

.method public setStyle(IIFZZZZ)V
    .locals 1

    .prologue
    .line 51
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->color:I

    .line 52
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bgcolor:I

    .line 53
    iput p3, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->textSize:F

    .line 54
    iput-boolean p4, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bold:Z

    .line 55
    iput-boolean p5, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->italic:Z

    .line 56
    iput-boolean p6, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->underline:Z

    .line 57
    iput-boolean p7, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->lineThrough:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasStyle:Z

    .line 59
    return-void
.end method
