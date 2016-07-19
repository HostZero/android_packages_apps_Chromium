.class Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;
.super Ljava/lang/Object;
.source "ForeignSessionHelper.java"


# instance fields
.field public final sessionId:I

.field public final tabs:Ljava/util/List;

.field public final timestamp:J


# direct methods
.method private constructor <init>(JI)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->tabs:Ljava/util/List;

    .line 73
    iput-wide p1, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->timestamp:J

    .line 74
    iput p3, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;->sessionId:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(JILorg/chromium/chrome/browser/ntp/ForeignSessionHelper$1;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionWindow;-><init>(JI)V

    return-void
.end method
