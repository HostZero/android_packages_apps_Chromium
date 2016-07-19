.class Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
.super Ljava/lang/Object;
.source "DateDialogNormalizer.java"


# instance fields
.field public final day:I

.field public final millisForPicker:J

.field public final month:I

.field public final year:I


# direct methods
.method constructor <init>(JIII)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    .line 40
    iput p3, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->year:I

    .line 41
    iput p4, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->month:I

    .line 42
    iput p5, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->day:I

    .line 43
    return-void
.end method

.method static create(III)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    .locals 7

    .prologue
    .line 58
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 60
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 61
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 62
    new-instance v1, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;-><init>(JIII)V

    return-object v1
.end method

.method static create(J)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 48
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 49
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 51
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 52
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 53
    invoke-static {v1, v2, v0}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(III)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v0

    return-object v0
.end method
