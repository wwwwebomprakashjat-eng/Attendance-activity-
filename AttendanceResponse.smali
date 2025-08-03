.class public Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;

.field private status:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;->status:Z

    iput-object p2, p0, Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;->status:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nic/nmms/modules/attendance/pojo/AttendanceResponse;->status:Z

    return-void
.end method
