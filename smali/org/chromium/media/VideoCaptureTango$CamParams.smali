.class Lorg/chromium/media/VideoCaptureTango$CamParams;
.super Ljava/lang/Object;
.source "VideoCaptureTango.java"


# instance fields
.field final mHeight:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final mWidth:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/chromium/media/VideoCaptureTango$CamParams;->mId:I

    .line 33
    iput-object p2, p0, Lorg/chromium/media/VideoCaptureTango$CamParams;->mName:Ljava/lang/String;

    .line 34
    iput p3, p0, Lorg/chromium/media/VideoCaptureTango$CamParams;->mWidth:I

    .line 35
    iput p4, p0, Lorg/chromium/media/VideoCaptureTango$CamParams;->mHeight:I

    .line 36
    return-void
.end method
