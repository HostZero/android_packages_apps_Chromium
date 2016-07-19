.class public final Lcom/google/android/gms/common/stats/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/content/ComponentName;

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/d;->a:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/d;->b:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/d;->c:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/d;->d:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/d;->e:I

    return-void
.end method
