.class Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;
.super Ljava/lang/Object;
.source "ForeignSessionHelper.java"


# static fields
.field static final DEVICE_TYPE_CHROMEOS:I = 0x4

.field static final DEVICE_TYPE_LINUX:I = 0x3

.field static final DEVICE_TYPE_MACOSX:I = 0x2

.field static final DEVICE_TYPE_OTHER:I = 0x5

.field static final DEVICE_TYPE_PHONE:I = 0x6

.field static final DEVICE_TYPE_TABLET:I = 0x7

.field static final DEVICE_TYPE_UNSET:I = 0x0

.field static final DEVICE_TYPE_WIN:I = 0x1


# instance fields
.field public final deviceType:I

.field public final modifiedTime:J

.field public final name:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final windows:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->windows:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->tag:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->name:Ljava/lang/String;

    .line 58
    iput p3, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->deviceType:I

    .line 59
    iput-wide p4, p0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->modifiedTime:J

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLorg/chromium/chrome/browser/ntp/ForeignSessionHelper$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method
