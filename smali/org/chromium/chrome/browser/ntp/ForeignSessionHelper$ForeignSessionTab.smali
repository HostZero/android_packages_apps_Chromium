.class Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;
.super Ljava/lang/Object;
.source "ForeignSessionHelper.java"


# instance fields
.field public final id:I

.field public final timestamp:J

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->url:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->title:Ljava/lang/String;

    .line 90
    iput-wide p3, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->timestamp:J

    .line 91
    iput p5, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;->id:I

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JILorg/chromium/chrome/browser/ntp/ForeignSessionHelper$1;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct/range {p0 .. p5}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method
