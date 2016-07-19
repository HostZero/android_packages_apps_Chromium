.class final Landroid/support/v4/app/aB;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public b:Z

.field public c:Landroid/support/v4/app/K;

.field public d:Ljava/util/LinkedList;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-boolean v1, p0, Landroid/support/v4/app/aB;->b:Z

    .line 536
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aB;->d:Ljava/util/LinkedList;

    .line 538
    iput v1, p0, Landroid/support/v4/app/aB;->e:I

    .line 541
    iput-object p1, p0, Landroid/support/v4/app/aB;->a:Landroid/content/ComponentName;

    .line 542
    return-void
.end method
