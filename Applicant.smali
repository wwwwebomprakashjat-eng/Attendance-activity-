.class public Lcom/nic/nmms/modules/attendance/pojo/Applicant;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicantNumber:Ljava/lang/String;

.field private attendance:Ljava/lang/String;

.field private blockCode:Ljava/lang/String;

.field private dateFrom:Ljava/lang/String;

.field private dateTo:Ljava/lang/String;

.field private dayNumber:Ljava/lang/String;

.field private jobCardNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private panchayatCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->jobCardNumber:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->applicantNumber:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->attendance:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->jobCardNumber:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->applicantNumber:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->attendance:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->blockCode:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->panchayatCode:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dateFrom:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dateTo:Ljava/lang/String;

    .line 16
    iput-object p9, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dayNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicantNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->applicantNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->attendance:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->blockCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dateFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dateTo:Ljava/lang/String;

    return-object v0
.end method

.method public getDayNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getJobCardNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->jobCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPanchayatCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->panchayatCode:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicantNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->applicantNumber:Ljava/lang/String;

    return-void
.end method

.method public setAttendance(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->attendance:Ljava/lang/String;

    return-void
.end method

.method public setBlockCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->blockCode:Ljava/lang/String;

    return-void
.end method

.method public setDateFrom(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dateFrom:Ljava/lang/String;

    return-void
.end method

.method public setDateTo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dateTo:Ljava/lang/String;

    return-void
.end method

.method public setDayNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->dayNumber:Ljava/lang/String;

    return-void
.end method

.method public setJobCardNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->jobCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->name:Ljava/lang/String;

    return-void
.end method

.method public setPanchayatCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nic/nmms/modules/attendance/pojo/Applicant;->panchayatCode:Ljava/lang/String;

    return-void
.end method
